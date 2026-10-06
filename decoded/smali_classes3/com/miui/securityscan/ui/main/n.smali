.class public final synthetic Lcom/miui/securityscan/ui/main/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/ui/main/o;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/ui/main/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/n;->a:Lcom/miui/securityscan/ui/main/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/n;->a:Lcom/miui/securityscan/ui/main/o;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/o;->a(Lcom/miui/securityscan/ui/main/o;)V

    return-void
.end method
