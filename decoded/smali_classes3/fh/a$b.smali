.class Lfh/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lfh/a;


# direct methods
.method constructor <init>(Lfh/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfh/a$b;->c:Lfh/a;

    iput-object p2, p0, Lfh/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lfh/a$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfh/a$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh/a$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lfh/a$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/warningcenter/policeassist/PaUtils;->setCallNumberAndStartService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
