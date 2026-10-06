.class public final synthetic Lcom/miui/securityscan/ui/main/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/j;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/j;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->onClick(Landroid/view/View;)V

    return-void
.end method
