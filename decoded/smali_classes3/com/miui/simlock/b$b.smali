.class public final enum Lcom/miui/simlock/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/simlock/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/simlock/b$b;

.field public static final enum b:Lcom/miui/simlock/b$b;

.field public static final enum c:Lcom/miui/simlock/b$b;

.field private static final synthetic d:[Lcom/miui/simlock/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/simlock/b$b;

    const-string v1, "STATE_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/simlock/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/simlock/b$b;->a:Lcom/miui/simlock/b$b;

    new-instance v0, Lcom/miui/simlock/b$b;

    const-string v1, "STATE_CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/simlock/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/simlock/b$b;->b:Lcom/miui/simlock/b$b;

    new-instance v0, Lcom/miui/simlock/b$b;

    const-string v1, "STATE_CLOSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/simlock/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/simlock/b$b;->c:Lcom/miui/simlock/b$b;

    invoke-static {}, Lcom/miui/simlock/b$b;->a()[Lcom/miui/simlock/b$b;

    move-result-object v0

    sput-object v0, Lcom/miui/simlock/b$b;->d:[Lcom/miui/simlock/b$b;

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

.method private static final synthetic a()[Lcom/miui/simlock/b$b;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/simlock/b$b;

    sget-object v1, Lcom/miui/simlock/b$b;->a:Lcom/miui/simlock/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/simlock/b$b;->b:Lcom/miui/simlock/b$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/simlock/b$b;->c:Lcom/miui/simlock/b$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/simlock/b$b;
    .locals 1

    const-class v0, Lcom/miui/simlock/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/simlock/b$b;

    return-object p0
.end method

.method public static values()[Lcom/miui/simlock/b$b;
    .locals 1

    sget-object v0, Lcom/miui/simlock/b$b;->d:[Lcom/miui/simlock/b$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/simlock/b$b;

    return-object v0
.end method
