.class public final enum Lcom/miui/bubbles/data/FreeformMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/bubbles/data/FreeformMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/bubbles/data/FreeformMode;

.field public static final enum MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

.field public static final enum MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

.field public static final enum MODE_MINI:Lcom/miui/bubbles/data/FreeformMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/bubbles/data/FreeformMode;

    const-string v1, "MODE_FREEFORM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/bubbles/data/FreeformMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    new-instance v1, Lcom/miui/bubbles/data/FreeformMode;

    const-string v3, "MODE_MINI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/bubbles/data/FreeformMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_MINI:Lcom/miui/bubbles/data/FreeformMode;

    new-instance v3, Lcom/miui/bubbles/data/FreeformMode;

    const-string v5, "MODE_EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/bubbles/data/FreeformMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/bubbles/data/FreeformMode;->MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/bubbles/data/FreeformMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/bubbles/data/FreeformMode;->$VALUES:[Lcom/miui/bubbles/data/FreeformMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static modeFromAction(I)Lcom/miui/bubbles/data/FreeformMode;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/miui/bubbles/data/FreeformMode;->MODE_MINI:Lcom/miui/bubbles/data/FreeformMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/bubbles/data/FreeformMode;
    .locals 1

    const-class v0, Lcom/miui/bubbles/data/FreeformMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/bubbles/data/FreeformMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/bubbles/data/FreeformMode;
    .locals 1

    sget-object v0, Lcom/miui/bubbles/data/FreeformMode;->$VALUES:[Lcom/miui/bubbles/data/FreeformMode;

    invoke-virtual {v0}, [Lcom/miui/bubbles/data/FreeformMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/bubbles/data/FreeformMode;

    return-object v0
.end method
