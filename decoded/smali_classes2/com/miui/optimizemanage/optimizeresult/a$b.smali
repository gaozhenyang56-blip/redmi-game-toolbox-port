.class Lcom/miui/optimizemanage/optimizeresult/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/optimizeresult/a;->q(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

.field final synthetic b:Lcom/miui/optimizemanage/optimizeresult/a;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/a;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/a$b;->b:Lcom/miui/optimizemanage/optimizeresult/a;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/a$b;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$b;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/a$b;->b:Lcom/miui/optimizemanage/optimizeresult/a;

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->m0(Lcom/miui/optimizemanage/optimizeresult/a;)V

    :cond_0
    const-string v0, "activity_dislike"

    invoke-static {v0}, Lgb/a;->r(Ljava/lang/String;)V

    return-void
.end method
