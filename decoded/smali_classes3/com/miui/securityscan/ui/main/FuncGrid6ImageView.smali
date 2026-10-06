.class public Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->a:Ljava/lang/String;

    return-void
.end method

.method public setAdShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->b:Z

    return-void
.end method
