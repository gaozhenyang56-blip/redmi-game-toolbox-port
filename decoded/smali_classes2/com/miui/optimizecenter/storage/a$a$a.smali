.class Lcom/miui/optimizecenter/storage/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/a$a;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a$a$a;->a:Lcom/miui/optimizecenter/storage/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$a$a;->a:Lcom/miui/optimizecenter/storage/a$a;

    iget-object v0, v0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->g(Lcom/miui/optimizecenter/storage/a;)Lxa/b;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a$a$a;->a:Lcom/miui/optimizecenter/storage/a$a;

    iget-object v2, v2, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/a;->f(Lcom/miui/optimizecenter/storage/a;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxa/b;->d(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/a;->h(Lcom/miui/optimizecenter/storage/a;Ljava/util/HashMap;)V

    return-void
.end method
