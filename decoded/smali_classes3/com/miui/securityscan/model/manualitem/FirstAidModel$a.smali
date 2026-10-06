.class Lcom/miui/securityscan/model/manualitem/FirstAidModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/FirstAidModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/FirstAidModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/FirstAidModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FirstAidModel$a;->b:Lcom/miui/securityscan/model/manualitem/FirstAidModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/FirstAidModel$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/FirstAidModel$a;->b:Lcom/miui/securityscan/model/manualitem/FirstAidModel;

    invoke-static {v0}, Lcom/miui/securityscan/model/manualitem/FirstAidModel;->access$000(Lcom/miui/securityscan/model/manualitem/FirstAidModel;)Lo5/d;

    move-result-object v0

    invoke-virtual {v0}, Lo5/d;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/FirstAidModel$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
