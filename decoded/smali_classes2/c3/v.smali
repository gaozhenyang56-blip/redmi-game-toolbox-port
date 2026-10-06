.class public Lc3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/v$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lc3/v$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lc3/v;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc3/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc3/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lc3/v$a;
    .locals 1

    iget-object v0, p0, Lc3/v;->d:Lc3/v$a;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lc3/v;->c:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/v;->b:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/v;->a:Ljava/lang/String;

    return-void
.end method

.method public h(Lc3/v$a;)V
    .locals 0

    iput-object p1, p0, Lc3/v;->d:Lc3/v$a;

    return-void
.end method
