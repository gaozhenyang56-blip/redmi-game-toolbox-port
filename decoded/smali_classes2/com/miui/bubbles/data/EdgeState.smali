.class public final enum Lcom/miui/bubbles/data/EdgeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/bubbles/data/EdgeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/bubbles/data/EdgeState;

.field public static final enum ANIMATING:Lcom/miui/bubbles/data/EdgeState;

.field public static final enum DRAGGING:Lcom/miui/bubbles/data/EdgeState;

.field public static final enum PINNED:Lcom/miui/bubbles/data/EdgeState;

.field public static final enum UNDEFINE:Lcom/miui/bubbles/data/EdgeState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/miui/bubbles/data/EdgeState;

    const-string v1, "UNDEFINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/bubbles/data/EdgeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/bubbles/data/EdgeState;->UNDEFINE:Lcom/miui/bubbles/data/EdgeState;

    new-instance v1, Lcom/miui/bubbles/data/EdgeState;

    const-string v3, "DRAGGING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/bubbles/data/EdgeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/bubbles/data/EdgeState;->DRAGGING:Lcom/miui/bubbles/data/EdgeState;

    new-instance v3, Lcom/miui/bubbles/data/EdgeState;

    const-string v5, "ANIMATING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/bubbles/data/EdgeState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/bubbles/data/EdgeState;->ANIMATING:Lcom/miui/bubbles/data/EdgeState;

    new-instance v5, Lcom/miui/bubbles/data/EdgeState;

    const-string v7, "PINNED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/bubbles/data/EdgeState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/bubbles/data/EdgeState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/miui/bubbles/data/EdgeState;->$VALUES:[Lcom/miui/bubbles/data/EdgeState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/bubbles/data/EdgeState;
    .locals 1

    const-class v0, Lcom/miui/bubbles/data/EdgeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/bubbles/data/EdgeState;

    return-object p0
.end method

.method public static values()[Lcom/miui/bubbles/data/EdgeState;
    .locals 1

    sget-object v0, Lcom/miui/bubbles/data/EdgeState;->$VALUES:[Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v0}, [Lcom/miui/bubbles/data/EdgeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/bubbles/data/EdgeState;

    return-object v0
.end method
