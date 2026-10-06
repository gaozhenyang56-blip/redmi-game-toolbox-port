.class Lcom/miui/gamebooster/voicechanger/SettingsView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/voicechanger/SettingsView;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/voicechanger/SettingsView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$b;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_3

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1}, Lo8/k;->L()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$b;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-static {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->l(Lcom/miui/gamebooster/voicechanger/SettingsView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lj8/j;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lj8/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$b;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/voicechanger/SettingsView;->m(Lcom/miui/gamebooster/voicechanger/SettingsView;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Lr8/b;->m(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$b;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-static {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->n(Lcom/miui/gamebooster/voicechanger/SettingsView;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lr8/b;->m(Z)V

    :goto_1
    return-void
.end method
