.class Lo2/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/f$a;->a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field final synthetic b:Lo2/f$a;


# direct methods
.method constructor <init>(Lo2/f$a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lo2/f$a$a;->b:Lo2/f$a;

    iput-object p2, p0, Lo2/f$a$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo2/f$a$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v1, p0, Lo2/f$a$a;->b:Lo2/f$a;

    iget-object v1, v1, Lo2/f$a;->a:Lcom/miui/guardprovider/VirusObserver;

    invoke-interface {v0, v1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->D(Lcom/miui/guardprovider/aidl/IVirusObserver;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
