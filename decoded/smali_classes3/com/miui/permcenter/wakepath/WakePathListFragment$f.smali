.class final Lcom/miui/permcenter/wakepath/WakePathListFragment$f;
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
        "Lyc/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$f;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lyc/s;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/lifecycle/u0;

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$f;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lyc/s;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lyc/s;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$f;->a()Lyc/s;

    move-result-object v0

    return-object v0
.end method
