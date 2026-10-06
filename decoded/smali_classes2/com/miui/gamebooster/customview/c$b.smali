.class Lcom/miui/gamebooster/customview/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/c$b;->a:Lcom/miui/gamebooster/customview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/customview/c$b;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, La8/j;->m(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/c$b;->a:Lcom/miui/gamebooster/customview/c;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/customview/c;->a(Lcom/miui/gamebooster/customview/c;Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/bubbles/utils/TipsManager;->getInstance()Lcom/miui/bubbles/utils/TipsManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/miui/bubbles/utils/TipsManager;->showBarrageTipsIfNeed(Ljava/lang/String;I)V

    invoke-static {}, La8/j;->r()V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/c$b;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/customview/c;->i(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/c$b;->a:Lcom/miui/gamebooster/customview/c;

    iput-boolean p2, p1, Lcom/miui/gamebooster/customview/c;->t:Z

    invoke-static {}, La8/j;->l()V

    return-void
.end method
