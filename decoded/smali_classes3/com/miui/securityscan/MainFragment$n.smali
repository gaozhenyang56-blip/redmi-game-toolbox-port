.class Lcom/miui/securityscan/MainFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$n;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$n;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->X0(Lcom/miui/securityscan/MainFragment;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$n;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->N0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$n;->a:Lcom/miui/securityscan/MainFragment;

    iget-object v1, v1, Lcom/miui/securityscan/MainFragment;->z:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$n;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->Y0(Lcom/miui/securityscan/MainFragment;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$n;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->Z0(Lcom/miui/securityscan/MainFragment;)V

    return-void
.end method
