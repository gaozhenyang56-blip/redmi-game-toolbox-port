.class final Lcom/miui/permcenter/wakepath/WakePathListFragment$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lyc/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$c;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lyc/j;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lyc/j;

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$c;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.permcenter.wakepath.WakePathManagerActivity"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    new-instance v4, Lcom/miui/permcenter/wakepath/WakePathListFragment$c$a;

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$c;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-direct {v4, v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$c$a;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x32

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lyc/j;-><init>(Lcom/miui/permcenter/wakepath/WakePathManagerActivity;Ljava/util/ArrayList;ZLak/l;Lak/l;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILbk/g;)V

    return-object v9
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$c;->a()Lyc/j;

    move-result-object v0

    return-object v0
.end method
