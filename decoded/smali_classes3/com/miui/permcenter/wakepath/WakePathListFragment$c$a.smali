.class final Lcom/miui/permcenter/wakepath/WakePathListFragment$c$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment$c;->a()Lyc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lyc/r;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$c$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lyc/r;)V
    .locals 3
    .param p1    # Lyc/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$c$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyc/r;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment$c$a;->a(Lyc/r;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
