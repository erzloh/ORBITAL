// State Machine but we don't use it
switch (state)
{
	case "free":
		PlayerMovement(p);
		break;
	case "pushed":
		PlayerPushed();
		break;
}

CollideCoin();