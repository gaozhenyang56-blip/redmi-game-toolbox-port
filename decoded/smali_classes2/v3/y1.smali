.class public final synthetic Lv3/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/fragment/NewTaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/y1;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lv3/y1;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->d0(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    return-void
.end method
