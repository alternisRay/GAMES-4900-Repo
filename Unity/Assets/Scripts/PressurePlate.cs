using UnityEngine;

public class PressurePlate : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Pressure Plate Activated");
    }
}
