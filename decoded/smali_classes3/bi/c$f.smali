.class public final enum Lbi/c$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbi/c$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbi/c$f;

.field public static final enum c:Lbi/c$f;

.field public static final enum d:Lbi/c$f;

.field public static final enum e:Lbi/c$f;

.field private static final synthetic f:[Lbi/c$f;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lbi/c$f;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbi/c$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/c$f;->b:Lbi/c$f;

    new-instance v1, Lbi/c$f;

    const-string v3, "ENTERED_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbi/c$f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbi/c$f;->c:Lbi/c$f;

    new-instance v3, Lbi/c$f;

    const-string v5, "EXITED_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbi/c$f;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbi/c$f;->d:Lbi/c$f;

    new-instance v5, Lbi/c$f;

    const-string v7, "ENTERED_AND_EXITED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbi/c$f;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbi/c$f;->e:Lbi/c$f;

    const/4 v7, 0x4

    new-array v7, v7, [Lbi/c$f;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lbi/c$f;->f:[Lbi/c$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbi/c$f;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/c$f;
    .locals 1

    const-class v0, Lbi/c$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbi/c$f;

    return-object p0
.end method

.method public static values()[Lbi/c$f;
    .locals 1

    sget-object v0, Lbi/c$f;->f:[Lbi/c$f;

    invoke-virtual {v0}, [Lbi/c$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/c$f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbi/c$f;->a:I

    return v0
.end method
