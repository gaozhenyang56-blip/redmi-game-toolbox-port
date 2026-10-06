.class Lcom/miui/optimizemanage/CleanFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/CleanFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/CleanFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$h;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$h;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/CleanFragment;->m0(Lcom/miui/optimizemanage/CleanFragment;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$h;->a:Lcom/miui/optimizemanage/CleanFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/CleanFragment;->n0(Lcom/miui/optimizemanage/CleanFragment;Z)V

    return-void
.end method
