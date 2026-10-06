.class Lzi/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lzi/y;


# direct methods
.method private constructor <init>(Lzi/y;)V
    .locals 0

    iput-object p1, p0, Lzi/y$a;->e:Lzi/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lzi/y$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lzi/y$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lzi/y$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lzi/y$a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzi/y;Lzi/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/y$a;-><init>(Lzi/y;)V

    return-void
.end method
