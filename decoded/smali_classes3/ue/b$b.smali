.class public final enum Lue/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lue/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lue/b$b;

.field public static final enum b:Lue/b$b;

.field public static final enum c:Lue/b$b;

.field public static final enum d:Lue/b$b;

.field private static final synthetic e:[Lue/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lue/b$b;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lue/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lue/b$b;->a:Lue/b$b;

    new-instance v1, Lue/b$b;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lue/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lue/b$b;->b:Lue/b$b;

    new-instance v3, Lue/b$b;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lue/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lue/b$b;->c:Lue/b$b;

    new-instance v5, Lue/b$b;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lue/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lue/b$b;->d:Lue/b$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lue/b$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lue/b$b;->e:[Lue/b$b;

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

.method public static valueOf(Ljava/lang/String;)Lue/b$b;
    .locals 1

    const-class v0, Lue/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lue/b$b;

    return-object p0
.end method

.method public static values()[Lue/b$b;
    .locals 1

    sget-object v0, Lue/b$b;->e:[Lue/b$b;

    invoke-virtual {v0}, [Lue/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lue/b$b;

    return-object v0
.end method
