.class public final synthetic Lzf/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/o;

.field public final synthetic b:Lcom/miui/guardprovider/aidl/IAntiVirusServer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/s;->a:Lcom/miui/securityscan/scanner/o;

    iput-object p2, p0, Lzf/s;->b:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzf/s;->a:Lcom/miui/securityscan/scanner/o;

    iget-object v1, p0, Lzf/s;->b:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-static {v0, v1}, Lcom/miui/securityscan/scanner/o;->e(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method
