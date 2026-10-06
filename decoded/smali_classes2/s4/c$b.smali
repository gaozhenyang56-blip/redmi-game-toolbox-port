.class public Ls4/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ls4/c;


# direct methods
.method private constructor <init>(Lu4/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls4/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls4/c;-><init>(Lu4/c;Ls4/c$a;)V

    iput-object v0, p0, Ls4/c$b;->a:Ls4/c;

    return-void
.end method

.method public static b(Lu4/c;)Ls4/c$b;
    .locals 1

    new-instance v0, Ls4/c$b;

    invoke-direct {v0, p0}, Ls4/c$b;-><init>(Lu4/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Ls4/c;
    .locals 1

    iget-object v0, p0, Ls4/c$b;->a:Ls4/c;

    return-object v0
.end method

.method public c(I)Ls4/c$b;
    .locals 1

    iget-object v0, p0, Ls4/c$b;->a:Ls4/c;

    iput p1, v0, Ls4/a;->b:I

    return-object p0
.end method
