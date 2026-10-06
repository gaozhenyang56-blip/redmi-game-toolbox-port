.class final Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Boolean;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "mLayoutManager"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "mList"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->q0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Lmiuix/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/m;

    move-result-object p1

    invoke-virtual {p1}, Ljc/m;->w()Landroidx/lifecycle/c0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
