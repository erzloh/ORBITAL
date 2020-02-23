// State Machine but we don't use it
switch (state)
{
	case "normal":
		PlayerMovement(p);
		break;
	case "malus1":
		PlayerMalus1(p);
		break;
}

CollideCoin();