using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    //Influenced by Bendux: https://www.youtube.com/watch?v=K1xZ-rycYY8
    //His flipping code has been unchanged, there isn't really another way to change it to be mine sadly.
    //But I did use the code to influence the side and the correct arm that is facing the wall.
    //Check LeftCheck and RightCheck and how it takes the isFacingRight boolean.
    private float horizontal;
    private float speed = 8f;
    private float jumpingPower = 16f;
    private bool isFacingRight = true;
    private bool leftWallJump = true; // can jump from the left wall
    private bool rightWallJump = true; // can jump from the right wall
    private int wind = 2;

    [SerializeField] private Rigidbody2D rb;
    [SerializeField] private Transform groundCheck;
    [SerializeField] private Transform leftWallCheck;
    [SerializeField] private Transform rightWallCheck;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private LayerMask winLayer;
    [SerializeField] private AudioSource src;

    void Update()
    {
        horizontal = Input.GetAxisRaw("Horizontal");


        if (Input.GetButtonDown("Jump"))
        {
            if (IsGrounded()) {
                leftWallJump = true;
                rightWallJump = true;
                rb.velocity = new Vector2(rb.velocity.x, jumpingPower);
                Debug.Log("Ground Reset");
            }else if (LeftCheck() && leftWallJump) {
                    rb.velocity = new Vector2(rb.velocity.x, jumpingPower);
                    leftWallJump = false;
                    rightWallJump = true;
                    Debug.Log("Left Jump");
            }
            else if (RightCheck() && rightWallJump) {
                    rb.velocity = new Vector2(rb.velocity.x, jumpingPower);
                    rightWallJump = false;
                    leftWallJump = true;
                    Debug.Log("Right Jump");
            }       
        }

        if (Input.GetButtonUp("Jump"))
        {
            if (rb.velocity.y > .3f) {
                rb.velocity = new Vector2(rb.velocity.x, rb.velocity.y * 0.5f);
            } else {
                rb.velocity = new Vector2(rb.velocity.x, rb.velocity.y * 0.2f); // adds a cap that will slow faster if near top
            }
        }
        

        if (winCheck()) {
            src.Play();
        }
        Flip();
    }

    private void FixedUpdate()
    {
        rb.velocity = new Vector2(horizontal * speed + wind, rb.velocity.y);
    }

    private bool IsGrounded()
    {
        return Physics2D.OverlapCircle(groundCheck.position, 0.2f, groundLayer);
    }

    private bool LeftCheck() {
        if (isFacingRight) {
            if (Physics2D.OverlapCircle(leftWallCheck.position, 0.2f, groundLayer)) {
                return true;
            }
        } else {
            if (Physics2D.OverlapCircle(rightWallCheck.position, 0.2f, groundLayer)) {
                return true;
            }
        }
        return false;
        
    }

    private bool RightCheck() {
        if (!isFacingRight) {
            if (Physics2D.OverlapCircle(leftWallCheck.position, 0.2f, groundLayer)) {
                return true;
            }
        } else {
            if (Physics2D.OverlapCircle(rightWallCheck.position, 0.2f, groundLayer)) {
                return true;
            }
        }
        return false;
    }

    private void Flip()
    {
        if (isFacingRight && horizontal < 0f || !isFacingRight && horizontal > 0f)
        {
            isFacingRight = !isFacingRight;
            Vector3 localScale = transform.localScale;
            localScale.x *= -1f;
            transform.localScale = localScale;
        }
    }

    private bool winCheck() {
        if (Physics2D.OverlapCircle(groundCheck.position, 0.2f, winLayer)) {
                wind = 0;
                return true;
            } else {
                return false;
            } 
    }
}
