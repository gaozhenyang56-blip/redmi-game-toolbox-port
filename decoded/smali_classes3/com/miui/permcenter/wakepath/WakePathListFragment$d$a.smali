.class public final Lcom/miui/permcenter/wakepath/WakePathListFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/nestedheader/widget/NestedHeaderLayout;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setInSearchMode(Z)V

    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/nestedheader/widget/NestedHeaderLayout;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setInSearchMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic onUpdate(ZF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/view/a;->a(Lmiuix/view/b;ZF)V

    return-void
.end method
