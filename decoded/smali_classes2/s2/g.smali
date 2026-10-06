.class public final synthetic Ls2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/g;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iput-object p2, p0, Ls2/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls2/g;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v1, p0, Ls2/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls2/j;->f(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    return-void
.end method
