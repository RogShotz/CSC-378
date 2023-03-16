using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AGrid : MonoBehaviour
{
    GridScript gs;

    private int width = 10;
    private int height = 10;
    private Node[,] grid;
    void Start() {
        grid[gs.startRow, gs.startCol] = new Node(gs.startRow, gs.startCol, 0, 0);
        grid[gs.finRow,gs.finCol] = new Node(gs.finRow, gs.finCol, 0, 0);
        grid[gs.wallRow,gs.wallCol] = new Node(gs.wallRow, gs.wallCol, 0, 0);

        for (int row = 0; row < height; row++) {
            for (int col = 0; col < width; col++) {
                if((row != gs.startRow && col != gs.startCol) && (row != gs.finRow && col != gs.finCol) && (row != gs.wallRow && col != gs.wallCol))
                grid[row, col] = new Node(row, col, Math.Abs(gs.startRow - row + gs.startCol - col),
                 Math.Abs(gs.finRow - row) * Math.Abs(gs.finRow - row) + Math.Abs(gs.finCol - col) * Math.Abs(gs.finCol - col));
            }
        }

        for (int row = 0; row < height; row++) {
            for (int col = 0; col < width; col++) {
                Node curr = grid[row, col];
                Debug.Log(curr);
            }
        }


    }
}
