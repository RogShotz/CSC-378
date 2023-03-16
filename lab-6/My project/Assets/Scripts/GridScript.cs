using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GridScript : MonoBehaviour
{

    private int width = 10;
    private int height = 10;
    private GameObject[,] grid;
    
    private Object[,] agrid; // AStar grid that runs in parrallel
    public Sprite sprite;

    void Start(){
        grid = new UnityEngine.GameObject[width, height];

        for (int row = 0; row < height; row++) {
            for (int col = 0; col < width; col++) {
                GameObject g = grid[row, col] = new GameObject("R" + row + "C" + col);
                
                //Position it in the scene
                g.transform.position = new Vector2(row, col);
                //Create the game object
                var s = g.AddComponent<SpriteRenderer>();
                s.sprite = sprite;
                s.color = Color.white;
            }
        }

        System.Random rnd = new System.Random();
        int startRow = rnd.Next(10);
        int startCol = rnd.Next(10);
        int finRow;
        int finCol;
        int wallRow;
        int wallCol;
        grid[startRow,startCol].transform.GetComponent<Renderer>().material.color = Color.green;

        if (startRow < 6) {
        finRow = rnd.Next(startRow, 10);
        finCol = rnd.Next(startCol, 10);
        } else {
            finRow = rnd.Next(startRow);
            finCol = rnd.Next(startCol);
        }
        grid[finRow,finCol].transform.GetComponent<Renderer>().material.color = Color.red;

        wallRow = (startRow + finRow) / 2;
        wallCol = (startCol + finCol) / 2;

        grid[wallRow, wallCol].transform.GetComponent<Renderer>().material.color = Color.black;


    }
}
