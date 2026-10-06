.class public final synthetic Lcom/miui/optimizemanage/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/optimizemanage/optimizeresult/j;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/miui/optimizemanage/ResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/util/List;Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizemanage/g;->a:Lcom/miui/optimizemanage/optimizeresult/j;

    iput-object p2, p0, Lcom/miui/optimizemanage/g;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/optimizemanage/g;->c:Lcom/miui/optimizemanage/ResultFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/g;->a:Lcom/miui/optimizemanage/optimizeresult/j;

    iget-object v1, p0, Lcom/miui/optimizemanage/g;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/optimizemanage/g;->c:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {v0, v1, v2}, Lcom/miui/optimizemanage/ResultFragment$i;->a(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/util/List;Lcom/miui/optimizemanage/ResultFragment;)V

    return-void
.end method
