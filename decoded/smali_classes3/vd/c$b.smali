.class Lvd/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/c;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvd/c;


# direct methods
.method constructor <init>(Lvd/c;)V
    .locals 0

    iput-object p1, p0, Lvd/c$b;->a:Lvd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lvd/c$b;->a:Lvd/c;

    invoke-static {p1}, Lvd/c;->e(Lvd/c;)V

    iget-object p1, p0, Lvd/c$b;->a:Lvd/c;

    invoke-static {p1}, Lvd/c;->l(Lvd/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lvd/c$b;->a:Lvd/c;

    invoke-static {p1}, Lvd/c;->l(Lvd/c;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lvd/c$b;->a:Lvd/c;

    invoke-static {p1}, Lvd/c;->l(Lvd/c;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
