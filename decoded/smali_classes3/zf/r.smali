.class public final synthetic Lzf/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/o;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/r;->a:Lcom/miui/securityscan/scanner/o;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    iget-object v0, p0, Lzf/r;->a:Lcom/miui/securityscan/scanner/o;

    invoke-static {v0, p1}, Lcom/miui/securityscan/scanner/o;->a(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method
