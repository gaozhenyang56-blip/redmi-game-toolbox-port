.class public final synthetic Lzf/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/n;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/k;->a:Lcom/miui/securityscan/scanner/n;

    iput-object p2, p0, Lzf/k;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    iget-object v0, p0, Lzf/k;->a:Lcom/miui/securityscan/scanner/n;

    iget-object v1, p0, Lzf/k;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/miui/securityscan/scanner/n;->b(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method
