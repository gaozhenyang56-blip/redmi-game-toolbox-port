.class Lcom/miui/antivirus/result/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/e;->m(Lcom/miui/antivirus/activity/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic b:Lcom/miui/antivirus/result/e;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/e$c;->b:Lcom/miui/antivirus/result/e;

    iput-object p2, p0, Lcom/miui/antivirus/result/e$c;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/result/e$c;->a:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/result/e$c;->b:Lcom/miui/antivirus/result/e;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/e$c;->b:Lcom/miui/antivirus/result/e;

    invoke-static {v0}, Lcom/miui/antivirus/result/e;->a(Lcom/miui/antivirus/result/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/c;

    iget-object v2, p0, Lcom/miui/antivirus/result/e$c;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
