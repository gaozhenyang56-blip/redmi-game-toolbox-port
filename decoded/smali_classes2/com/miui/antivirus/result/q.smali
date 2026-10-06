.class public Lcom/miui/antivirus/result/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field d:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/antivirus/result/q;->a:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/result/q;->d:[Landroid/widget/ImageView;

    return-void
.end method
