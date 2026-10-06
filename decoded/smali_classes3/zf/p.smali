.class public final synthetic Lzf/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/o;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/p;->a:Lcom/miui/securityscan/scanner/o;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lzf/p;->a:Lcom/miui/securityscan/scanner/o;

    invoke-static {v0, p1}, Lcom/miui/securityscan/scanner/o;->c(Lcom/miui/securityscan/scanner/o;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
