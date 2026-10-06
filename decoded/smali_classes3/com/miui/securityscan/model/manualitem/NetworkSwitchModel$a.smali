.class Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel;->optimize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel$a;->b:Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel;

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/NetworkSwitchModel$a;->a:Landroid/content/Context;

    const v1, 0x7f121a7e

    invoke-static {v0, v1}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void
.end method
