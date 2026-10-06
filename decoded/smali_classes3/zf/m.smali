.class public final synthetic Lzf/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/o;

.field public final synthetic b:Lak/l;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/o;Lak/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/m;->a:Lcom/miui/securityscan/scanner/o;

    iput-object p2, p0, Lzf/m;->b:Lak/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    iget-object v0, p0, Lzf/m;->a:Lcom/miui/securityscan/scanner/o;

    iget-object v1, p0, Lzf/m;->b:Lak/l;

    invoke-static {v0, v1, p1}, Lcom/miui/securityscan/scanner/o;->f(Lcom/miui/securityscan/scanner/o;Lak/l;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method
