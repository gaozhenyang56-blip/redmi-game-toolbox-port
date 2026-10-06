.class La8/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La8/h;


# direct methods
.method constructor <init>(La8/h;)V
    .locals 0

    iput-object p1, p0, La8/h$b;->a:La8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, La8/h$d;

    iget-object v0, p1, La8/h$d;->d:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, La8/h$b;->a:La8/h;

    invoke-static {v0}, La8/h;->a(La8/h;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p1, La8/h$d;->c:I

    iget-object v2, p1, La8/h$d;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, La8/h$d;->d:Landroid/view/View;

    :cond_0
    iget-object v0, p1, La8/h$d;->e:La8/h$f;

    iget-object v1, p1, La8/h$d;->d:Landroid/view/View;

    iget v2, p1, La8/h$d;->c:I

    iget-object v3, p1, La8/h$d;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v3}, La8/h$f;->a(Landroid/view/View;ILandroid/view/ViewGroup;)V

    iget-object v0, p0, La8/h$b;->a:La8/h;

    invoke-virtual {v0, p1}, La8/h;->e(La8/h$d;)V

    const/4 p1, 0x1

    return p1
.end method
