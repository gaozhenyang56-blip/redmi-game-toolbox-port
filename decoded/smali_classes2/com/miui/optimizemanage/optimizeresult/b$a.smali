.class Lcom/miui/optimizemanage/optimizeresult/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/optimizeresult/b;->i(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

.field final synthetic b:Lcom/miui/optimizemanage/optimizeresult/b;

.field final synthetic c:Lcom/miui/optimizemanage/optimizeresult/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/b;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->c:Lcom/miui/optimizemanage/optimizeresult/b;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iput-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->b:Lcom/miui/optimizemanage/optimizeresult/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->b:Lcom/miui/optimizemanage/optimizeresult/b;

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->n0(Lcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->c:Lcom/miui/optimizemanage/optimizeresult/b;

    iget v1, v0, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7531

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7532

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/b;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$a;->c:Lcom/miui/optimizemanage/optimizeresult/b;

    iget-object v1, v1, Lcom/miui/optimizemanage/optimizeresult/b;->M:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
