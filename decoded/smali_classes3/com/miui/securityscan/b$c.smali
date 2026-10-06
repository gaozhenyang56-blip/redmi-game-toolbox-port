.class Lcom/miui/securityscan/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/b;->b(Landroid/content/Context;Lcom/miui/securityscan/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/b$d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/b$c;->a:Lcom/miui/securityscan/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/securityscan/b$c;->a:Lcom/miui/securityscan/b$d;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/miui/securityscan/b$d;->a(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
