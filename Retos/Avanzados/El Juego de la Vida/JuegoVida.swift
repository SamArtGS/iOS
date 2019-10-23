struct Cell {
    var isAlive: Bool = false

    static func makeDeadCell() -> Cell {
        return Cell(isAlive: false)
    }
    
    static func makeLiveCell() -> Cell {
        return Cell(isAlive: true)
    }
}

struct GameState {
    var cells: [Cell] = []
    
    subscript(index: Int) -> Cell {
        get {
            return cells[index]
        }
    }
}


func iterate() -> GameState  {
    var nextState = currentState
    for i in 0...width - 1 {
        for j in 0...height - 1 {
            let positionInTheArray = j*width + i
            nextState[positionInTheArray] = Cell(isAlive: state(x: i, y: j))
        }
    }
    self.currentState = nextState
    return nextState
}

func test_survival() {
    let twoAliveNeighboursGameState = GameState(cells: [Cell.makeDeadCell(), Cell.makeDeadCell(), Cell.makeDeadCell(),
                                  Cell.makeLiveCell(), Cell.makeLiveCell(), Cell.makeLiveCell(),
                                  Cell.makeDeadCell(), Cell.makeDeadCell(), Cell.makeDeadCell()])
    game.setInitialState(twoAliveNeighboursGameState)
    XCTAssertTrue(game.state(x: 1, y: 1))

    let threeAliveNeighboursGameState = GameState(cells: [Cell.makeDeadCell(), Cell.makeLiveCell(), Cell.makeDeadCell(),
                                         Cell.makeDeadCell(), Cell.makeLiveCell(), Cell.makeLiveCell(),
                                         Cell.makeDeadCell(), Cell.makeLiveCell(), Cell.makeDeadCell()])
    game.setInitialState(threeAliveNeighboursGameState)
    XCTAssertTrue(game.state(x: 1, y: 1))
}
func state(x: Int, y: Int) -> Bool {
    var numberOfAliveNeighbours = 0
    let previousPosition = x + y*width
    for i in x-1…x+1 {
        for j in y-1…y+1 {
            let positionInTheArray = j*width + i
            guard positionInTheArray >= 0 && positionInTheArray < width*height && previousPosition != positionInTheArray else {continue}
            if currentState[positionInTheArray].isAlive {
                numberOfAliveNeighbours += 1
            }
        }
    }
    let wasPrevioslyAlive = currentState[previousPosition].isAlive
    if wasPrevioslyAlive {
        return numberOfAliveNeighbours == 2 || numberOfAliveNeighbours == 3
    }
    return false
}

func test_birth() {
    let deadCellState = GameState(cells:[Cell.makeLiveCell(), Cell.makeDeadCell(), Cell.makeDeadCell(),
                                 Cell.makeLiveCell(), Cell.makeLiveCell(), Cell.makeDeadCell(),
                                 Cell.makeDeadCell(), Cell.makeDeadCell(), Cell.makeDeadCell()
        ])
    game.setInitialState(deadCellState)
    XCTAssertTrue(game.state(x: 1, y: 0))
}
func test_death() {
    let lonelyState = GameState(cells: [Cell.makeDeadCell(), Cell.makeDeadCell(), Cell.makeDeadCell(),
                                        Cell.makeDeadCell(), Cell.makeLiveCell(), Cell.makeDeadCell(),
                                        Cell.makeDeadCell(), Cell.makeDeadCell(), Cell.makeDeadCell()])
    game.setInitialState(lonelyState)
    XCTAssertEqual(false, game.state(x: 1, y: 1))

    let overcrowdingState = GameState(cells: [Cell.makeLiveCell(), Cell.makeLiveCell(), Cell.makeLiveCell(),
                                              Cell.makeLiveCell(), Cell.makeLiveCell(), Cell.makeLiveCell(),
                                              Cell.makeLiveCell(), Cell.makeLiveCell(), Cell.makeLiveCell()])
    game.setInitialState(overcrowdingState)
    XCTAssertEqual(false, game.state(x: 1, y: 1))
}

func addStateObserver(_ observer: GameStateObserver) {
    observer?(generateInitialState())
    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
        observer?(self.iterate())
    }
}




override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(width: width, height: height)
        game.addStateObserver { [weak self] state in
        self?.display(state)
    }
}

func display(_ state: GameState) {
    self.dataSource = state.cells
    collectionView.reloadData()
}


func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(SquareCollectionViewCell.self)", for: indexPath) as! SquareCollectionViewCell
      cell.configureWith(dataSource[indexPath.item].isAlive)
      return cell
}

func configureWith(_ state: Bool) {
  squareView.backgroundColor = state ? .black : .white
}
