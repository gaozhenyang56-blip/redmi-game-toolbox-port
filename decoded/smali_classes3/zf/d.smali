.class public final enum Lzf/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzf/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lzf/d;

.field public static final enum d:Lzf/d;

.field public static final enum e:Lzf/d;

.field private static final synthetic f:[Lzf/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lzf/d;

    const-string v1, "SYSTEM_CONFIG"

    const/4 v2, 0x0

    const v3, 0x7f120fad

    invoke-direct {v0, v1, v2, v3}, Lzf/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzf/d;->c:Lzf/d;

    new-instance v1, Lzf/d;

    const-string v3, "CLEAR_ACCELERATION"

    const/4 v4, 0x1

    const v5, 0x7f120fab

    invoke-direct {v1, v3, v4, v5}, Lzf/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzf/d;->d:Lzf/d;

    new-instance v3, Lzf/d;

    const-string v5, "SYSTEM_APP"

    const/4 v6, 0x2

    const v7, 0x7f120fac

    invoke-direct {v3, v5, v6, v7}, Lzf/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lzf/d;->e:Lzf/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lzf/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lzf/d;->f:[Lzf/d;

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

    iput p3, p0, Lzf/d;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzf/d;
    .locals 1

    const-class v0, Lzf/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzf/d;

    return-object p0
.end method

.method public static values()[Lzf/d;
    .locals 1

    sget-object v0, Lzf/d;->f:[Lzf/d;

    invoke-virtual {v0}, [Lzf/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzf/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzf/d;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzf/d;->a:Ljava/lang/String;

    return-void
.end method
