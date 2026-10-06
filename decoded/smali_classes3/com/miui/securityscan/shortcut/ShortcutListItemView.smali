.class public Lcom/miui/securityscan/shortcut/ShortcutListItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Lcom/miui/securityscan/shortcut/d$b;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/securityscan/shortcut/c;

.field private e:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/securityscan/shortcut/c;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->d:Lcom/miui/securityscan/shortcut/c;

    iget-object v0, p1, Lcom/miui/securityscan/shortcut/c;->a:Lcom/miui/securityscan/shortcut/d$b;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->a:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->e:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->e:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v2, p1, Lcom/miui/securityscan/shortcut/c;->b:Z

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutListItemView$a;->a:[I

    iget-object p1, p1, Lcom/miui/securityscan/shortcut/c;->a:Lcom/miui/securityscan/shortcut/d$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f0808fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f120318

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f0807a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f1204af

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/miui/securityscan/shortcut/d;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f080980

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f08097e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f120456

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f080878

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120086

    goto :goto_1

    :cond_1
    const v0, 0x7f120085

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f080872

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f120092

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f08086c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f120084

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f08086f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f12008d

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lc4/j;->a()I

    move-result p1

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f12008b

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_8
    invoke-static {}, Lcom/miui/securityscan/shortcut/d;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f080875

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f080873

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f120457

    goto :goto_1

    :goto_3
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->e:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->e:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->e:Lmiuix/slidingwidget/widget/SlidingButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->d:Lcom/miui/securityscan/shortcut/c;

    iput-boolean p2, p1, Lcom/miui/securityscan/shortcut/c;->b:Z

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->a:Lcom/miui/securityscan/shortcut/d$b;

    sget-object p2, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, p2, :cond_0

    const-string p1, "short_cut_list"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->a:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->a:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->e:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method
