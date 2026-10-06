.class public abstract Ll4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# instance fields
.field protected a:I

.field protected b:Ll4/f;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ll4/b;->a:I

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 0

    iput p1, p0, Ll4/b;->a:I

    iput-object p4, p0, Ll4/b;->b:Ll4/f;

    return-void
.end method

.method public abstract b()I
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll4/b;->c:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
