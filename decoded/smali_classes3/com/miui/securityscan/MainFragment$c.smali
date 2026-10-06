.class Lcom/miui/securityscan/MainFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->Q1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$c;->b:Lcom/miui/securityscan/MainFragment;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$c;->b:Lcom/miui/securityscan/MainFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->T0(Lcom/miui/securityscan/MainFragment;Z)Z

    const/4 p1, 0x4

    invoke-static {p1}, Lqf/c;->x(I)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$c;->b:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$c;->a:Landroid/app/Activity;

    invoke-static {p1}, Leg/u;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$c;->b:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p1}, Lcom/miui/securityscan/MainFragment;->Q2()V

    :goto_0
    return-void
.end method
