.class Lfe/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/j;


# direct methods
.method constructor <init>(Lfe/j;)V
    .locals 0

    iput-object p1, p0, Lfe/j$a;->a:Lfe/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lfe/j$a;->a:Lfe/j;

    invoke-static {p2, p1}, Lfe/j;->k(Lfe/j;Landroid/widget/CheckBox;)V

    iget-object p1, p0, Lfe/j$a;->a:Lfe/j;

    invoke-static {p1}, Lfe/j;->l(Lfe/j;)Lw4/e;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
