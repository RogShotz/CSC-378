using System;

public class Node
{
    public int row;
    public int col;
    public int f;
    public int g;
    public int h;

    public Node(int row, int col, int g, int h) {
        this.row = row;
        this.col = col;
        this.g = g;
        this.h = h;
        this.f = g+h;
    }


}
