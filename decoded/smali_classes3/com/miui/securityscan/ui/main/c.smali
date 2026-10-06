.class public final synthetic Lcom/miui/securityscan/ui/main/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->a(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V

    return-void
.end method
