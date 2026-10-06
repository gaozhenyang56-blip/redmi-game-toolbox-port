.class Ly5/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/i;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly5/i;


# direct methods
.method constructor <init>(Ly5/i;)V
    .locals 0

    iput-object p1, p0, Ly5/i$d;->a:Ly5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ly5/i$d;->a:Ly5/i;

    invoke-static {v0}, Ly5/i;->h(Ly5/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Ly5/i$d;->a:Ly5/i;

    invoke-static {v2}, Ly5/i;->i(Ly5/i;)Ly5/c;

    move-result-object v2

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v3

    invoke-virtual {v3}, Lx5/p;->T()Lx5/e;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ly5/i;->j(Ly5/i;Landroidx/recyclerview/widget/RecyclerView;Ly5/c;Lx5/e;)V

    return-void
.end method
