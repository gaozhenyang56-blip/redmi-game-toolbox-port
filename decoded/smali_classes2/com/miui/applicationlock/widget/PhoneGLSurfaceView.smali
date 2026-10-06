.class public Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/applicationlock/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    new-instance v0, Lcom/miui/applicationlock/widget/v;

    invoke-direct {v0, p1}, Lcom/miui/applicationlock/widget/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;->a:Lcom/miui/applicationlock/widget/v;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public setColorState(Lb3/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;->a:Lcom/miui/applicationlock/widget/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/v;->h(Lb3/b;)V

    :cond_0
    return-void
.end method
