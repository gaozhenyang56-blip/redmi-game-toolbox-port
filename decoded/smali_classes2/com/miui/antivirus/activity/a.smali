.class public final synthetic Lcom/miui/antivirus/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/activity/a;->a:Lcom/miui/antivirus/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/a;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity$f0;->b(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method
