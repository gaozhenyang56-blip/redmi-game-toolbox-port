.class Lcom/miui/autotask/fragment/NewTaskFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/autotask/view/RecyclerViewPreference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/fragment/NewTaskFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/fragment/NewTaskFragment;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment$b;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment$b;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->g0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->x(I)V

    return-void
.end method
