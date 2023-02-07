using UnityEngine;

public class WinSound : MonoBehaviour
{
    [SerializeField] private AudioSource src;

    // Update is called once per frame
    void OnCollisionEnter(Collision collision) {
        if (collision.gameObject.tag =="winLayer"){
        src.Play();
        Debug.Log("TEST");
        }
    }
}
