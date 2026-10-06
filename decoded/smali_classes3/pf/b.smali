.class public final synthetic Lpf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/b;->a:Lcom/miui/securityscan/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lpf/b;->a:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->j0(Lcom/miui/securityscan/MainActivity;)V

    return-void
.end method
