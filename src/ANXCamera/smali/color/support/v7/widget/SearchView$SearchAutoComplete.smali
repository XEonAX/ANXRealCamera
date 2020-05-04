.class public Lcolor/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/d;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field private b:I

.field private c:Lcolor/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;

    invoke-direct {p1, p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;-><init>(Lcolor/support/v7/widget/SearchView$SearchAutoComplete;)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->b:I

    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .locals 0

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->b()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public enoughToFilter()Z
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->b:I

    if-lez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/widget/d;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/d;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->c:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->i()V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/d;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->c:Lcolor/support/v7/widget/SearchView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    :cond_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/d;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->c:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcolor/support/v7/widget/SearchView;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcolor/support/v7/widget/SearchView;->l:Lcolor/support/v7/widget/SearchView$a;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcolor/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;Z)V

    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method setSearchView(Lcolor/support/v7/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->c:Lcolor/support/v7/widget/SearchView;

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/d;->setThreshold(I)V

    iput p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->b:I

    return-void
.end method
